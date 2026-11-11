# sandbox_telemetry_parse — 2026-11-11 15:35:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1695995 lines=3756
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3747 |
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
| `chromeBrowserPssKb` | {'int': 3747} |
| `chromeGpuPssKb` | {'int': 3747} |
| `chromeOtherPssKb` | {'int': 3747} |
| `chromeProcesses` | {'int': 3747} |
| `chromeProfiles` | {'int': 3747} |
| `chromeRendererMaxPssKb` | {'int': 3747} |
| `chromeRendererPssKb` | {'int': 3747} |
| `chromeRenderers` | {'int': 3747} |
| `chromeTabs` | {'int': 3747} |
| `chromeTabsProbedProfiles` | {'int': 3747} |
| `chromeUtilityPssKb` | {'int': 3747} |
| `desktopPssKb` | {'int': 3747} |
| `hostPssKb` | {'int': 3747} |
| `kind` | {'str': 3747} |
| `memAvailableKb` | {'int': 3747} |
| `memTotalKb` | {'int': 3747} |
| `otherPssKb` | {'int': 3747} |
| `processes` | {'int': 3747} |
| `pssFallbackProcesses` | {'int': 3747} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
