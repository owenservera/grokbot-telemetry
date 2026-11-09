# sandbox_telemetry_parse — 2026-11-09 16:42:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=746673 lines=1658
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1649 |
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
| `chromeBrowserPssKb` | {'int': 1649} |
| `chromeGpuPssKb` | {'int': 1649} |
| `chromeOtherPssKb` | {'int': 1649} |
| `chromeProcesses` | {'int': 1649} |
| `chromeProfiles` | {'int': 1649} |
| `chromeRendererMaxPssKb` | {'int': 1649} |
| `chromeRendererPssKb` | {'int': 1649} |
| `chromeRenderers` | {'int': 1649} |
| `chromeTabs` | {'int': 1649} |
| `chromeTabsProbedProfiles` | {'int': 1649} |
| `chromeUtilityPssKb` | {'int': 1649} |
| `desktopPssKb` | {'int': 1649} |
| `hostPssKb` | {'int': 1649} |
| `kind` | {'str': 1649} |
| `memAvailableKb` | {'int': 1649} |
| `memTotalKb` | {'int': 1649} |
| `otherPssKb` | {'int': 1649} |
| `processes` | {'int': 1649} |
| `pssFallbackProcesses` | {'int': 1649} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
