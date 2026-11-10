# sandbox_telemetry_parse — 2026-11-10 13:23:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1155273 lines=2561
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2552 |
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
| `chromeBrowserPssKb` | {'int': 2552} |
| `chromeGpuPssKb` | {'int': 2552} |
| `chromeOtherPssKb` | {'int': 2552} |
| `chromeProcesses` | {'int': 2552} |
| `chromeProfiles` | {'int': 2552} |
| `chromeRendererMaxPssKb` | {'int': 2552} |
| `chromeRendererPssKb` | {'int': 2552} |
| `chromeRenderers` | {'int': 2552} |
| `chromeTabs` | {'int': 2552} |
| `chromeTabsProbedProfiles` | {'int': 2552} |
| `chromeUtilityPssKb` | {'int': 2552} |
| `desktopPssKb` | {'int': 2552} |
| `hostPssKb` | {'int': 2552} |
| `kind` | {'str': 2552} |
| `memAvailableKb` | {'int': 2552} |
| `memTotalKb` | {'int': 2552} |
| `otherPssKb` | {'int': 2552} |
| `processes` | {'int': 2552} |
| `pssFallbackProcesses` | {'int': 2552} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
