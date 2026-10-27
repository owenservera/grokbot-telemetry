# sandbox_telemetry_parse — 2026-10-27 07:31:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=395552 lines=878
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 873 |
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
| `chromeBrowserPssKb` | {'int': 873} |
| `chromeGpuPssKb` | {'int': 873} |
| `chromeOtherPssKb` | {'int': 873} |
| `chromeProcesses` | {'int': 873} |
| `chromeProfiles` | {'int': 873} |
| `chromeRendererMaxPssKb` | {'int': 873} |
| `chromeRendererPssKb` | {'int': 873} |
| `chromeRenderers` | {'int': 873} |
| `chromeTabs` | {'int': 873} |
| `chromeTabsProbedProfiles` | {'int': 873} |
| `chromeUtilityPssKb` | {'int': 873} |
| `desktopPssKb` | {'int': 873} |
| `hostPssKb` | {'int': 873} |
| `kind` | {'str': 873} |
| `memAvailableKb` | {'int': 873} |
| `memTotalKb` | {'int': 873} |
| `otherPssKb` | {'int': 873} |
| `processes` | {'int': 873} |
| `pssFallbackProcesses` | {'int': 873} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
