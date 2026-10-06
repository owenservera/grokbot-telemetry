# sandbox_telemetry_parse — 2026-10-06 19:55:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=570650 lines=1256
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1251 |
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
| `chromeBrowserPssKb` | {'int': 1251} |
| `chromeGpuPssKb` | {'int': 1251} |
| `chromeOtherPssKb` | {'int': 1251} |
| `chromeProcesses` | {'int': 1251} |
| `chromeProfiles` | {'int': 1251} |
| `chromeRendererMaxPssKb` | {'int': 1251} |
| `chromeRendererPssKb` | {'int': 1251} |
| `chromeRenderers` | {'int': 1251} |
| `chromeTabs` | {'int': 1251} |
| `chromeTabsProbedProfiles` | {'int': 1251} |
| `chromeUtilityPssKb` | {'int': 1251} |
| `desktopPssKb` | {'int': 1251} |
| `hostPssKb` | {'int': 1251} |
| `kind` | {'str': 1251} |
| `memAvailableKb` | {'int': 1251} |
| `memTotalKb` | {'int': 1251} |
| `otherPssKb` | {'int': 1251} |
| `processes` | {'int': 1251} |
| `pssFallbackProcesses` | {'int': 1251} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
