# sandbox_telemetry_parse — 2026-10-07 09:24:23 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=934717 lines=2054
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2049 |
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
| `chromeBrowserPssKb` | {'int': 2049} |
| `chromeGpuPssKb` | {'int': 2049} |
| `chromeOtherPssKb` | {'int': 2049} |
| `chromeProcesses` | {'int': 2049} |
| `chromeProfiles` | {'int': 2049} |
| `chromeRendererMaxPssKb` | {'int': 2049} |
| `chromeRendererPssKb` | {'int': 2049} |
| `chromeRenderers` | {'int': 2049} |
| `chromeTabs` | {'int': 2049} |
| `chromeTabsProbedProfiles` | {'int': 2049} |
| `chromeUtilityPssKb` | {'int': 2049} |
| `desktopPssKb` | {'int': 2049} |
| `hostPssKb` | {'int': 2049} |
| `kind` | {'str': 2049} |
| `memAvailableKb` | {'int': 2049} |
| `memTotalKb` | {'int': 2049} |
| `otherPssKb` | {'int': 2049} |
| `processes` | {'int': 2049} |
| `pssFallbackProcesses` | {'int': 2049} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
