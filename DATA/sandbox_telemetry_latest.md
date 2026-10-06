# sandbox_telemetry_parse — 2026-10-06 06:08:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=197186 lines=437
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 432 |
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
| `chromeBrowserPssKb` | {'int': 432} |
| `chromeGpuPssKb` | {'int': 432} |
| `chromeOtherPssKb` | {'int': 432} |
| `chromeProcesses` | {'int': 432} |
| `chromeProfiles` | {'int': 432} |
| `chromeRendererMaxPssKb` | {'int': 432} |
| `chromeRendererPssKb` | {'int': 432} |
| `chromeRenderers` | {'int': 432} |
| `chromeTabs` | {'int': 432} |
| `chromeTabsProbedProfiles` | {'int': 432} |
| `chromeUtilityPssKb` | {'int': 432} |
| `desktopPssKb` | {'int': 432} |
| `hostPssKb` | {'int': 432} |
| `kind` | {'str': 432} |
| `memAvailableKb` | {'int': 432} |
| `memTotalKb` | {'int': 432} |
| `otherPssKb` | {'int': 432} |
| `processes` | {'int': 432} |
| `pssFallbackProcesses` | {'int': 432} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
