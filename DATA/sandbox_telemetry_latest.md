# sandbox_telemetry_parse — 2026-11-11 18:06:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1752119 lines=3880
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3871 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 3871} |
| `chromeGpuPssKb` | {'int': 3871} |
| `chromeOtherPssKb` | {'int': 3871} |
| `chromeProcesses` | {'int': 3871} |
| `chromeProfiles` | {'int': 3871} |
| `chromeRendererMaxPssKb` | {'int': 3871} |
| `chromeRendererPssKb` | {'int': 3871} |
| `chromeRenderers` | {'int': 3871} |
| `chromeTabs` | {'int': 3871} |
| `chromeTabsProbedProfiles` | {'int': 3871} |
| `chromeUtilityPssKb` | {'int': 3871} |
| `desktopPssKb` | {'int': 3871} |
| `hostPssKb` | {'int': 3871} |
| `kind` | {'str': 3871} |
| `memAvailableKb` | {'int': 3871} |
| `memTotalKb` | {'int': 3871} |
| `otherPssKb` | {'int': 3871} |
| `processes` | {'int': 3871} |
| `pssFallbackProcesses` | {'int': 3871} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
