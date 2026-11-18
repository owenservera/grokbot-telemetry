# sandbox_telemetry_parse — 2026-11-18 23:26:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1023151 lines=2270
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2261 |
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
| `chromeBrowserPssKb` | {'int': 2261} |
| `chromeGpuPssKb` | {'int': 2261} |
| `chromeOtherPssKb` | {'int': 2261} |
| `chromeProcesses` | {'int': 2261} |
| `chromeProfiles` | {'int': 2261} |
| `chromeRendererMaxPssKb` | {'int': 2261} |
| `chromeRendererPssKb` | {'int': 2261} |
| `chromeRenderers` | {'int': 2261} |
| `chromeTabs` | {'int': 2261} |
| `chromeTabsProbedProfiles` | {'int': 2261} |
| `chromeUtilityPssKb` | {'int': 2261} |
| `desktopPssKb` | {'int': 2261} |
| `hostPssKb` | {'int': 2261} |
| `kind` | {'str': 2261} |
| `memAvailableKb` | {'int': 2261} |
| `memTotalKb` | {'int': 2261} |
| `otherPssKb` | {'int': 2261} |
| `processes` | {'int': 2261} |
| `pssFallbackProcesses` | {'int': 2261} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
