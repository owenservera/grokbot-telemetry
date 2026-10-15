# sandbox_telemetry_parse — 2026-10-15 02:55:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=628198 lines=1394
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1389 |
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
| `chromeBrowserPssKb` | {'int': 1389} |
| `chromeGpuPssKb` | {'int': 1389} |
| `chromeOtherPssKb` | {'int': 1389} |
| `chromeProcesses` | {'int': 1389} |
| `chromeProfiles` | {'int': 1389} |
| `chromeRendererMaxPssKb` | {'int': 1389} |
| `chromeRendererPssKb` | {'int': 1389} |
| `chromeRenderers` | {'int': 1389} |
| `chromeTabs` | {'int': 1389} |
| `chromeTabsProbedProfiles` | {'int': 1389} |
| `chromeUtilityPssKb` | {'int': 1389} |
| `desktopPssKb` | {'int': 1389} |
| `hostPssKb` | {'int': 1389} |
| `kind` | {'str': 1389} |
| `memAvailableKb` | {'int': 1389} |
| `memTotalKb` | {'int': 1389} |
| `otherPssKb` | {'int': 1389} |
| `processes` | {'int': 1389} |
| `pssFallbackProcesses` | {'int': 1389} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
