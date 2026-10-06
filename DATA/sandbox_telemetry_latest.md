# sandbox_telemetry_parse — 2026-10-07 00:35:54 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=697903 lines=1535
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1530 |
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
| `chromeBrowserPssKb` | {'int': 1530} |
| `chromeGpuPssKb` | {'int': 1530} |
| `chromeOtherPssKb` | {'int': 1530} |
| `chromeProcesses` | {'int': 1530} |
| `chromeProfiles` | {'int': 1530} |
| `chromeRendererMaxPssKb` | {'int': 1530} |
| `chromeRendererPssKb` | {'int': 1530} |
| `chromeRenderers` | {'int': 1530} |
| `chromeTabs` | {'int': 1530} |
| `chromeTabsProbedProfiles` | {'int': 1530} |
| `chromeUtilityPssKb` | {'int': 1530} |
| `desktopPssKb` | {'int': 1530} |
| `hostPssKb` | {'int': 1530} |
| `kind` | {'str': 1530} |
| `memAvailableKb` | {'int': 1530} |
| `memTotalKb` | {'int': 1530} |
| `otherPssKb` | {'int': 1530} |
| `processes` | {'int': 1530} |
| `pssFallbackProcesses` | {'int': 1530} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
