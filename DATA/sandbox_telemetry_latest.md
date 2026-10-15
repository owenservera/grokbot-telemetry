# sandbox_telemetry_parse — 2026-10-15 11:41:54 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=841542 lines=1866
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1861 |
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
| `chromeBrowserPssKb` | {'int': 1861} |
| `chromeGpuPssKb` | {'int': 1861} |
| `chromeOtherPssKb` | {'int': 1861} |
| `chromeProcesses` | {'int': 1861} |
| `chromeProfiles` | {'int': 1861} |
| `chromeRendererMaxPssKb` | {'int': 1861} |
| `chromeRendererPssKb` | {'int': 1861} |
| `chromeRenderers` | {'int': 1861} |
| `chromeTabs` | {'int': 1861} |
| `chromeTabsProbedProfiles` | {'int': 1861} |
| `chromeUtilityPssKb` | {'int': 1861} |
| `desktopPssKb` | {'int': 1861} |
| `hostPssKb` | {'int': 1861} |
| `kind` | {'str': 1861} |
| `memAvailableKb` | {'int': 1861} |
| `memTotalKb` | {'int': 1861} |
| `otherPssKb` | {'int': 1861} |
| `processes` | {'int': 1861} |
| `pssFallbackProcesses` | {'int': 1861} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
