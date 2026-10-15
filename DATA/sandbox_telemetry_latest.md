# sandbox_telemetry_parse — 2026-10-15 14:59:03 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=913410 lines=2025
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2020 |
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
| `chromeBrowserPssKb` | {'int': 2020} |
| `chromeGpuPssKb` | {'int': 2020} |
| `chromeOtherPssKb` | {'int': 2020} |
| `chromeProcesses` | {'int': 2020} |
| `chromeProfiles` | {'int': 2020} |
| `chromeRendererMaxPssKb` | {'int': 2020} |
| `chromeRendererPssKb` | {'int': 2020} |
| `chromeRenderers` | {'int': 2020} |
| `chromeTabs` | {'int': 2020} |
| `chromeTabsProbedProfiles` | {'int': 2020} |
| `chromeUtilityPssKb` | {'int': 2020} |
| `desktopPssKb` | {'int': 2020} |
| `hostPssKb` | {'int': 2020} |
| `kind` | {'str': 2020} |
| `memAvailableKb` | {'int': 2020} |
| `memTotalKb` | {'int': 2020} |
| `otherPssKb` | {'int': 2020} |
| `processes` | {'int': 2020} |
| `pssFallbackProcesses` | {'int': 2020} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
