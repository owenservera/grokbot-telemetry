# sandbox_telemetry_parse — 2026-10-07 01:38:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=725780 lines=1596
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1591 |
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
| `chromeBrowserPssKb` | {'int': 1591} |
| `chromeGpuPssKb` | {'int': 1591} |
| `chromeOtherPssKb` | {'int': 1591} |
| `chromeProcesses` | {'int': 1591} |
| `chromeProfiles` | {'int': 1591} |
| `chromeRendererMaxPssKb` | {'int': 1591} |
| `chromeRendererPssKb` | {'int': 1591} |
| `chromeRenderers` | {'int': 1591} |
| `chromeTabs` | {'int': 1591} |
| `chromeTabsProbedProfiles` | {'int': 1591} |
| `chromeUtilityPssKb` | {'int': 1591} |
| `desktopPssKb` | {'int': 1591} |
| `hostPssKb` | {'int': 1591} |
| `kind` | {'str': 1591} |
| `memAvailableKb` | {'int': 1591} |
| `memTotalKb` | {'int': 1591} |
| `otherPssKb` | {'int': 1591} |
| `processes` | {'int': 1591} |
| `pssFallbackProcesses` | {'int': 1591} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
