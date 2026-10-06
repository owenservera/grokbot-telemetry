# sandbox_telemetry_parse — 2026-10-06 05:42:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=185330 lines=411
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 406 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 406} |
| `chromeGpuPssKb` | {'int': 406} |
| `chromeOtherPssKb` | {'int': 406} |
| `chromeProcesses` | {'int': 406} |
| `chromeProfiles` | {'int': 406} |
| `chromeRendererMaxPssKb` | {'int': 406} |
| `chromeRendererPssKb` | {'int': 406} |
| `chromeRenderers` | {'int': 406} |
| `chromeTabs` | {'int': 406} |
| `chromeTabsProbedProfiles` | {'int': 406} |
| `chromeUtilityPssKb` | {'int': 406} |
| `desktopPssKb` | {'int': 406} |
| `hostPssKb` | {'int': 406} |
| `kind` | {'str': 406} |
| `memAvailableKb` | {'int': 406} |
| `memTotalKb` | {'int': 406} |
| `otherPssKb` | {'int': 406} |
| `processes` | {'int': 406} |
| `pssFallbackProcesses` | {'int': 406} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
