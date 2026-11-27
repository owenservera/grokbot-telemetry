# sandbox_telemetry_parse — 2026-11-27 06:58:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=294177 lines=657
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 649 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 649} |
| `chromeGpuPssKb` | {'int': 649} |
| `chromeOtherPssKb` | {'int': 649} |
| `chromeProcesses` | {'int': 649} |
| `chromeProfiles` | {'int': 649} |
| `chromeRendererMaxPssKb` | {'int': 649} |
| `chromeRendererPssKb` | {'int': 649} |
| `chromeRenderers` | {'int': 649} |
| `chromeTabs` | {'int': 649} |
| `chromeTabsProbedProfiles` | {'int': 649} |
| `chromeUtilityPssKb` | {'int': 649} |
| `desktopPssKb` | {'int': 649} |
| `hostPssKb` | {'int': 649} |
| `kind` | {'str': 649} |
| `memAvailableKb` | {'int': 649} |
| `memTotalKb` | {'int': 649} |
| `otherPssKb` | {'int': 649} |
| `processes` | {'int': 649} |
| `pssFallbackProcesses` | {'int': 649} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
