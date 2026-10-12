# sandbox_telemetry_parse — 2026-10-12 20:26:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=660760 lines=1466
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1461 |
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
| `chromeBrowserPssKb` | {'int': 1461} |
| `chromeGpuPssKb` | {'int': 1461} |
| `chromeOtherPssKb` | {'int': 1461} |
| `chromeProcesses` | {'int': 1461} |
| `chromeProfiles` | {'int': 1461} |
| `chromeRendererMaxPssKb` | {'int': 1461} |
| `chromeRendererPssKb` | {'int': 1461} |
| `chromeRenderers` | {'int': 1461} |
| `chromeTabs` | {'int': 1461} |
| `chromeTabsProbedProfiles` | {'int': 1461} |
| `chromeUtilityPssKb` | {'int': 1461} |
| `desktopPssKb` | {'int': 1461} |
| `hostPssKb` | {'int': 1461} |
| `kind` | {'str': 1461} |
| `memAvailableKb` | {'int': 1461} |
| `memTotalKb` | {'int': 1461} |
| `otherPssKb` | {'int': 1461} |
| `processes` | {'int': 1461} |
| `pssFallbackProcesses` | {'int': 1461} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
