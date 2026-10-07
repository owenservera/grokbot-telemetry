# sandbox_telemetry_parse — 2026-10-07 05:37:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=833941 lines=1833
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1828 |
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
| `chromeBrowserPssKb` | {'int': 1828} |
| `chromeGpuPssKb` | {'int': 1828} |
| `chromeOtherPssKb` | {'int': 1828} |
| `chromeProcesses` | {'int': 1828} |
| `chromeProfiles` | {'int': 1828} |
| `chromeRendererMaxPssKb` | {'int': 1828} |
| `chromeRendererPssKb` | {'int': 1828} |
| `chromeRenderers` | {'int': 1828} |
| `chromeTabs` | {'int': 1828} |
| `chromeTabsProbedProfiles` | {'int': 1828} |
| `chromeUtilityPssKb` | {'int': 1828} |
| `desktopPssKb` | {'int': 1828} |
| `hostPssKb` | {'int': 1828} |
| `kind` | {'str': 1828} |
| `memAvailableKb` | {'int': 1828} |
| `memTotalKb` | {'int': 1828} |
| `otherPssKb` | {'int': 1828} |
| `processes` | {'int': 1828} |
| `pssFallbackProcesses` | {'int': 1828} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
