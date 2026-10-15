# sandbox_telemetry_parse — 2026-10-15 09:17:31 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=782782 lines=1736
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1731 |
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
| `chromeBrowserPssKb` | {'int': 1731} |
| `chromeGpuPssKb` | {'int': 1731} |
| `chromeOtherPssKb` | {'int': 1731} |
| `chromeProcesses` | {'int': 1731} |
| `chromeProfiles` | {'int': 1731} |
| `chromeRendererMaxPssKb` | {'int': 1731} |
| `chromeRendererPssKb` | {'int': 1731} |
| `chromeRenderers` | {'int': 1731} |
| `chromeTabs` | {'int': 1731} |
| `chromeTabsProbedProfiles` | {'int': 1731} |
| `chromeUtilityPssKb` | {'int': 1731} |
| `desktopPssKb` | {'int': 1731} |
| `hostPssKb` | {'int': 1731} |
| `kind` | {'str': 1731} |
| `memAvailableKb` | {'int': 1731} |
| `memTotalKb` | {'int': 1731} |
| `otherPssKb` | {'int': 1731} |
| `processes` | {'int': 1731} |
| `pssFallbackProcesses` | {'int': 1731} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
