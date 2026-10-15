# sandbox_telemetry_parse — 2026-10-15 05:29:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=687862 lines=1526
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1521 |
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
| `chromeBrowserPssKb` | {'int': 1521} |
| `chromeGpuPssKb` | {'int': 1521} |
| `chromeOtherPssKb` | {'int': 1521} |
| `chromeProcesses` | {'int': 1521} |
| `chromeProfiles` | {'int': 1521} |
| `chromeRendererMaxPssKb` | {'int': 1521} |
| `chromeRendererPssKb` | {'int': 1521} |
| `chromeRenderers` | {'int': 1521} |
| `chromeTabs` | {'int': 1521} |
| `chromeTabsProbedProfiles` | {'int': 1521} |
| `chromeUtilityPssKb` | {'int': 1521} |
| `desktopPssKb` | {'int': 1521} |
| `hostPssKb` | {'int': 1521} |
| `kind` | {'str': 1521} |
| `memAvailableKb` | {'int': 1521} |
| `memTotalKb` | {'int': 1521} |
| `otherPssKb` | {'int': 1521} |
| `processes` | {'int': 1521} |
| `pssFallbackProcesses` | {'int': 1521} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
