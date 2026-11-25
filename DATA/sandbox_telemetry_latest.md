# sandbox_telemetry_parse — 2026-11-25 12:32:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2757887 lines=6110
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6095 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6095} |
| `chromeGpuPssKb` | {'int': 6095} |
| `chromeOtherPssKb` | {'int': 6095} |
| `chromeProcesses` | {'int': 6095} |
| `chromeProfiles` | {'int': 6095} |
| `chromeRendererMaxPssKb` | {'int': 6095} |
| `chromeRendererPssKb` | {'int': 6095} |
| `chromeRenderers` | {'int': 6095} |
| `chromeTabs` | {'int': 6095} |
| `chromeTabsProbedProfiles` | {'int': 6095} |
| `chromeUtilityPssKb` | {'int': 6095} |
| `desktopPssKb` | {'int': 6095} |
| `hostPssKb` | {'int': 6095} |
| `kind` | {'str': 6095} |
| `memAvailableKb` | {'int': 6095} |
| `memTotalKb` | {'int': 6095} |
| `otherPssKb` | {'int': 6095} |
| `processes` | {'int': 6095} |
| `pssFallbackProcesses` | {'int': 6095} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
