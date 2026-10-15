# sandbox_telemetry_parse — 2026-10-15 22:35:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1088334 lines=2412
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2407 |
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
| `chromeBrowserPssKb` | {'int': 2407} |
| `chromeGpuPssKb` | {'int': 2407} |
| `chromeOtherPssKb` | {'int': 2407} |
| `chromeProcesses` | {'int': 2407} |
| `chromeProfiles` | {'int': 2407} |
| `chromeRendererMaxPssKb` | {'int': 2407} |
| `chromeRendererPssKb` | {'int': 2407} |
| `chromeRenderers` | {'int': 2407} |
| `chromeTabs` | {'int': 2407} |
| `chromeTabsProbedProfiles` | {'int': 2407} |
| `chromeUtilityPssKb` | {'int': 2407} |
| `desktopPssKb` | {'int': 2407} |
| `hostPssKb` | {'int': 2407} |
| `kind` | {'str': 2407} |
| `memAvailableKb` | {'int': 2407} |
| `memTotalKb` | {'int': 2407} |
| `otherPssKb` | {'int': 2407} |
| `processes` | {'int': 2407} |
| `pssFallbackProcesses` | {'int': 2407} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
