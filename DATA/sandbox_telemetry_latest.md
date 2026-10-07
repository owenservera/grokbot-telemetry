# sandbox_telemetry_parse — 2026-10-07 12:35:27 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1021813 lines=2245
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2240 |
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
| `chromeBrowserPssKb` | {'int': 2240} |
| `chromeGpuPssKb` | {'int': 2240} |
| `chromeOtherPssKb` | {'int': 2240} |
| `chromeProcesses` | {'int': 2240} |
| `chromeProfiles` | {'int': 2240} |
| `chromeRendererMaxPssKb` | {'int': 2240} |
| `chromeRendererPssKb` | {'int': 2240} |
| `chromeRenderers` | {'int': 2240} |
| `chromeTabs` | {'int': 2240} |
| `chromeTabsProbedProfiles` | {'int': 2240} |
| `chromeUtilityPssKb` | {'int': 2240} |
| `desktopPssKb` | {'int': 2240} |
| `hostPssKb` | {'int': 2240} |
| `kind` | {'str': 2240} |
| `memAvailableKb` | {'int': 2240} |
| `memTotalKb` | {'int': 2240} |
| `otherPssKb` | {'int': 2240} |
| `processes` | {'int': 2240} |
| `pssFallbackProcesses` | {'int': 2240} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
