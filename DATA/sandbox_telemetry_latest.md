# sandbox_telemetry_parse — 2026-10-06 04:08:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=142922 lines=318
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 313 |
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
| `chromeBrowserPssKb` | {'int': 313} |
| `chromeGpuPssKb` | {'int': 313} |
| `chromeOtherPssKb` | {'int': 313} |
| `chromeProcesses` | {'int': 313} |
| `chromeProfiles` | {'int': 313} |
| `chromeRendererMaxPssKb` | {'int': 313} |
| `chromeRendererPssKb` | {'int': 313} |
| `chromeRenderers` | {'int': 313} |
| `chromeTabs` | {'int': 313} |
| `chromeTabsProbedProfiles` | {'int': 313} |
| `chromeUtilityPssKb` | {'int': 313} |
| `desktopPssKb` | {'int': 313} |
| `hostPssKb` | {'int': 313} |
| `kind` | {'str': 313} |
| `memAvailableKb` | {'int': 313} |
| `memTotalKb` | {'int': 313} |
| `otherPssKb` | {'int': 313} |
| `processes` | {'int': 313} |
| `pssFallbackProcesses` | {'int': 313} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
