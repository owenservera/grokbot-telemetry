# sandbox_telemetry_parse — 2026-10-07 16:01:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1113013 lines=2445
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2440 |
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
| `chromeBrowserPssKb` | {'int': 2440} |
| `chromeGpuPssKb` | {'int': 2440} |
| `chromeOtherPssKb` | {'int': 2440} |
| `chromeProcesses` | {'int': 2440} |
| `chromeProfiles` | {'int': 2440} |
| `chromeRendererMaxPssKb` | {'int': 2440} |
| `chromeRendererPssKb` | {'int': 2440} |
| `chromeRenderers` | {'int': 2440} |
| `chromeTabs` | {'int': 2440} |
| `chromeTabsProbedProfiles` | {'int': 2440} |
| `chromeUtilityPssKb` | {'int': 2440} |
| `desktopPssKb` | {'int': 2440} |
| `hostPssKb` | {'int': 2440} |
| `kind` | {'str': 2440} |
| `memAvailableKb` | {'int': 2440} |
| `memTotalKb` | {'int': 2440} |
| `otherPssKb` | {'int': 2440} |
| `processes` | {'int': 2440} |
| `pssFallbackProcesses` | {'int': 2440} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
