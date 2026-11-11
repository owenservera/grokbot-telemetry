# sandbox_telemetry_parse — 2026-11-11 17:55:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1748042 lines=3871
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3862 |
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
| `chromeBrowserPssKb` | {'int': 3862} |
| `chromeGpuPssKb` | {'int': 3862} |
| `chromeOtherPssKb` | {'int': 3862} |
| `chromeProcesses` | {'int': 3862} |
| `chromeProfiles` | {'int': 3862} |
| `chromeRendererMaxPssKb` | {'int': 3862} |
| `chromeRendererPssKb` | {'int': 3862} |
| `chromeRenderers` | {'int': 3862} |
| `chromeTabs` | {'int': 3862} |
| `chromeTabsProbedProfiles` | {'int': 3862} |
| `chromeUtilityPssKb` | {'int': 3862} |
| `desktopPssKb` | {'int': 3862} |
| `hostPssKb` | {'int': 3862} |
| `kind` | {'str': 3862} |
| `memAvailableKb` | {'int': 3862} |
| `memTotalKb` | {'int': 3862} |
| `otherPssKb` | {'int': 3862} |
| `processes` | {'int': 3862} |
| `pssFallbackProcesses` | {'int': 3862} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
