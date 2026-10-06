# sandbox_telemetry_parse — 2026-10-06 19:08:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=549218 lines=1209
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1204 |
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
| `chromeBrowserPssKb` | {'int': 1204} |
| `chromeGpuPssKb` | {'int': 1204} |
| `chromeOtherPssKb` | {'int': 1204} |
| `chromeProcesses` | {'int': 1204} |
| `chromeProfiles` | {'int': 1204} |
| `chromeRendererMaxPssKb` | {'int': 1204} |
| `chromeRendererPssKb` | {'int': 1204} |
| `chromeRenderers` | {'int': 1204} |
| `chromeTabs` | {'int': 1204} |
| `chromeTabsProbedProfiles` | {'int': 1204} |
| `chromeUtilityPssKb` | {'int': 1204} |
| `desktopPssKb` | {'int': 1204} |
| `hostPssKb` | {'int': 1204} |
| `kind` | {'str': 1204} |
| `memAvailableKb` | {'int': 1204} |
| `memTotalKb` | {'int': 1204} |
| `otherPssKb` | {'int': 1204} |
| `processes` | {'int': 1204} |
| `pssFallbackProcesses` | {'int': 1204} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
