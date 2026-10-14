# sandbox_telemetry_parse — 2026-10-15 00:48:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=575766 lines=1278
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1273 |
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
| `chromeBrowserPssKb` | {'int': 1273} |
| `chromeGpuPssKb` | {'int': 1273} |
| `chromeOtherPssKb` | {'int': 1273} |
| `chromeProcesses` | {'int': 1273} |
| `chromeProfiles` | {'int': 1273} |
| `chromeRendererMaxPssKb` | {'int': 1273} |
| `chromeRendererPssKb` | {'int': 1273} |
| `chromeRenderers` | {'int': 1273} |
| `chromeTabs` | {'int': 1273} |
| `chromeTabsProbedProfiles` | {'int': 1273} |
| `chromeUtilityPssKb` | {'int': 1273} |
| `desktopPssKb` | {'int': 1273} |
| `hostPssKb` | {'int': 1273} |
| `kind` | {'str': 1273} |
| `memAvailableKb` | {'int': 1273} |
| `memTotalKb` | {'int': 1273} |
| `otherPssKb` | {'int': 1273} |
| `processes` | {'int': 1273} |
| `pssFallbackProcesses` | {'int': 1273} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
