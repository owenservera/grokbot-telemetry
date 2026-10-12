# sandbox_telemetry_parse — 2026-10-12 16:23:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=631380 lines=1401
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1396 |
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
| `chromeBrowserPssKb` | {'int': 1396} |
| `chromeGpuPssKb` | {'int': 1396} |
| `chromeOtherPssKb` | {'int': 1396} |
| `chromeProcesses` | {'int': 1396} |
| `chromeProfiles` | {'int': 1396} |
| `chromeRendererMaxPssKb` | {'int': 1396} |
| `chromeRendererPssKb` | {'int': 1396} |
| `chromeRenderers` | {'int': 1396} |
| `chromeTabs` | {'int': 1396} |
| `chromeTabsProbedProfiles` | {'int': 1396} |
| `chromeUtilityPssKb` | {'int': 1396} |
| `desktopPssKb` | {'int': 1396} |
| `hostPssKb` | {'int': 1396} |
| `kind` | {'str': 1396} |
| `memAvailableKb` | {'int': 1396} |
| `memTotalKb` | {'int': 1396} |
| `otherPssKb` | {'int': 1396} |
| `processes` | {'int': 1396} |
| `pssFallbackProcesses` | {'int': 1396} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
