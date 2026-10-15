# sandbox_telemetry_parse — 2026-10-15 05:47:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=695094 lines=1542
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1537 |
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
| `chromeBrowserPssKb` | {'int': 1537} |
| `chromeGpuPssKb` | {'int': 1537} |
| `chromeOtherPssKb` | {'int': 1537} |
| `chromeProcesses` | {'int': 1537} |
| `chromeProfiles` | {'int': 1537} |
| `chromeRendererMaxPssKb` | {'int': 1537} |
| `chromeRendererPssKb` | {'int': 1537} |
| `chromeRenderers` | {'int': 1537} |
| `chromeTabs` | {'int': 1537} |
| `chromeTabsProbedProfiles` | {'int': 1537} |
| `chromeUtilityPssKb` | {'int': 1537} |
| `desktopPssKb` | {'int': 1537} |
| `hostPssKb` | {'int': 1537} |
| `kind` | {'str': 1537} |
| `memAvailableKb` | {'int': 1537} |
| `memTotalKb` | {'int': 1537} |
| `otherPssKb` | {'int': 1537} |
| `processes` | {'int': 1537} |
| `pssFallbackProcesses` | {'int': 1537} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
