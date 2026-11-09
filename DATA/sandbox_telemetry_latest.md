# sandbox_telemetry_parse — 2026-11-09 18:31:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=789708 lines=1753
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1744 |
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
| `chromeBrowserPssKb` | {'int': 1744} |
| `chromeGpuPssKb` | {'int': 1744} |
| `chromeOtherPssKb` | {'int': 1744} |
| `chromeProcesses` | {'int': 1744} |
| `chromeProfiles` | {'int': 1744} |
| `chromeRendererMaxPssKb` | {'int': 1744} |
| `chromeRendererPssKb` | {'int': 1744} |
| `chromeRenderers` | {'int': 1744} |
| `chromeTabs` | {'int': 1744} |
| `chromeTabsProbedProfiles` | {'int': 1744} |
| `chromeUtilityPssKb` | {'int': 1744} |
| `desktopPssKb` | {'int': 1744} |
| `hostPssKb` | {'int': 1744} |
| `kind` | {'str': 1744} |
| `memAvailableKb` | {'int': 1744} |
| `memTotalKb` | {'int': 1744} |
| `otherPssKb` | {'int': 1744} |
| `processes` | {'int': 1744} |
| `pssFallbackProcesses` | {'int': 1744} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
