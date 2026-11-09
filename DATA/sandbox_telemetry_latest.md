# sandbox_telemetry_parse — 2026-11-09 20:16:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=824556 lines=1830
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1821 |
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
| `chromeBrowserPssKb` | {'int': 1821} |
| `chromeGpuPssKb` | {'int': 1821} |
| `chromeOtherPssKb` | {'int': 1821} |
| `chromeProcesses` | {'int': 1821} |
| `chromeProfiles` | {'int': 1821} |
| `chromeRendererMaxPssKb` | {'int': 1821} |
| `chromeRendererPssKb` | {'int': 1821} |
| `chromeRenderers` | {'int': 1821} |
| `chromeTabs` | {'int': 1821} |
| `chromeTabsProbedProfiles` | {'int': 1821} |
| `chromeUtilityPssKb` | {'int': 1821} |
| `desktopPssKb` | {'int': 1821} |
| `hostPssKb` | {'int': 1821} |
| `kind` | {'str': 1821} |
| `memAvailableKb` | {'int': 1821} |
| `memTotalKb` | {'int': 1821} |
| `otherPssKb` | {'int': 1821} |
| `processes` | {'int': 1821} |
| `pssFallbackProcesses` | {'int': 1821} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
