# sandbox_telemetry_parse — 2026-11-12 02:06:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1923232 lines=4258
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4249 |
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
| `chromeBrowserPssKb` | {'int': 4249} |
| `chromeGpuPssKb` | {'int': 4249} |
| `chromeOtherPssKb` | {'int': 4249} |
| `chromeProcesses` | {'int': 4249} |
| `chromeProfiles` | {'int': 4249} |
| `chromeRendererMaxPssKb` | {'int': 4249} |
| `chromeRendererPssKb` | {'int': 4249} |
| `chromeRenderers` | {'int': 4249} |
| `chromeTabs` | {'int': 4249} |
| `chromeTabsProbedProfiles` | {'int': 4249} |
| `chromeUtilityPssKb` | {'int': 4249} |
| `desktopPssKb` | {'int': 4249} |
| `hostPssKb` | {'int': 4249} |
| `kind` | {'str': 4249} |
| `memAvailableKb` | {'int': 4249} |
| `memTotalKb` | {'int': 4249} |
| `otherPssKb` | {'int': 4249} |
| `processes` | {'int': 4249} |
| `pssFallbackProcesses` | {'int': 4249} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
