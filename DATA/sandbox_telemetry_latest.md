# sandbox_telemetry_parse — 2026-10-26 15:54:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=6272 lines=18
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 13 |
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
| `chromeBrowserPssKb` | {'int': 13} |
| `chromeGpuPssKb` | {'int': 13} |
| `chromeOtherPssKb` | {'int': 13} |
| `chromeProcesses` | {'int': 13} |
| `chromeProfiles` | {'int': 13} |
| `chromeRendererMaxPssKb` | {'int': 13} |
| `chromeRendererPssKb` | {'int': 13} |
| `chromeRenderers` | {'int': 13} |
| `chromeTabs` | {'int': 13} |
| `chromeTabsProbedProfiles` | {'int': 13} |
| `chromeUtilityPssKb` | {'int': 13} |
| `desktopPssKb` | {'int': 13} |
| `hostPssKb` | {'int': 13} |
| `kind` | {'str': 13} |
| `memAvailableKb` | {'int': 13} |
| `memTotalKb` | {'int': 13} |
| `otherPssKb` | {'int': 13} |
| `processes` | {'int': 13} |
| `pssFallbackProcesses` | {'int': 13} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
