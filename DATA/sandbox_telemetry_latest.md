# sandbox_telemetry_parse — 2026-10-15 10:50:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=819394 lines=1817
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1812 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1812} |
| `chromeGpuPssKb` | {'int': 1812} |
| `chromeOtherPssKb` | {'int': 1812} |
| `chromeProcesses` | {'int': 1812} |
| `chromeProfiles` | {'int': 1812} |
| `chromeRendererMaxPssKb` | {'int': 1812} |
| `chromeRendererPssKb` | {'int': 1812} |
| `chromeRenderers` | {'int': 1812} |
| `chromeTabs` | {'int': 1812} |
| `chromeTabsProbedProfiles` | {'int': 1812} |
| `chromeUtilityPssKb` | {'int': 1812} |
| `desktopPssKb` | {'int': 1812} |
| `hostPssKb` | {'int': 1812} |
| `kind` | {'str': 1812} |
| `memAvailableKb` | {'int': 1812} |
| `memTotalKb` | {'int': 1812} |
| `otherPssKb` | {'int': 1812} |
| `processes` | {'int': 1812} |
| `pssFallbackProcesses` | {'int': 1812} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
