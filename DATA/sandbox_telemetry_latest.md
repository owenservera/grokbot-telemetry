# sandbox_telemetry_parse — 2026-10-06 07:46:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=241874 lines=535
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 530 |
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
| `chromeBrowserPssKb` | {'int': 530} |
| `chromeGpuPssKb` | {'int': 530} |
| `chromeOtherPssKb` | {'int': 530} |
| `chromeProcesses` | {'int': 530} |
| `chromeProfiles` | {'int': 530} |
| `chromeRendererMaxPssKb` | {'int': 530} |
| `chromeRendererPssKb` | {'int': 530} |
| `chromeRenderers` | {'int': 530} |
| `chromeTabs` | {'int': 530} |
| `chromeTabsProbedProfiles` | {'int': 530} |
| `chromeUtilityPssKb` | {'int': 530} |
| `desktopPssKb` | {'int': 530} |
| `hostPssKb` | {'int': 530} |
| `kind` | {'str': 530} |
| `memAvailableKb` | {'int': 530} |
| `memTotalKb` | {'int': 530} |
| `otherPssKb` | {'int': 530} |
| `processes` | {'int': 530} |
| `pssFallbackProcesses` | {'int': 530} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
