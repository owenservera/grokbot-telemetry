# sandbox_telemetry_parse — 2026-10-07 07:10:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=874069 lines=1921
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1916 |
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
| `chromeBrowserPssKb` | {'int': 1916} |
| `chromeGpuPssKb` | {'int': 1916} |
| `chromeOtherPssKb` | {'int': 1916} |
| `chromeProcesses` | {'int': 1916} |
| `chromeProfiles` | {'int': 1916} |
| `chromeRendererMaxPssKb` | {'int': 1916} |
| `chromeRendererPssKb` | {'int': 1916} |
| `chromeRenderers` | {'int': 1916} |
| `chromeTabs` | {'int': 1916} |
| `chromeTabsProbedProfiles` | {'int': 1916} |
| `chromeUtilityPssKb` | {'int': 1916} |
| `desktopPssKb` | {'int': 1916} |
| `hostPssKb` | {'int': 1916} |
| `kind` | {'str': 1916} |
| `memAvailableKb` | {'int': 1916} |
| `memTotalKb` | {'int': 1916} |
| `otherPssKb` | {'int': 1916} |
| `processes` | {'int': 1916} |
| `pssFallbackProcesses` | {'int': 1916} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
