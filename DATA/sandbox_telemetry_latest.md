# sandbox_telemetry_parse — 2026-10-07 08:43:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=916021 lines=2013
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2008 |
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
| `chromeBrowserPssKb` | {'int': 2008} |
| `chromeGpuPssKb` | {'int': 2008} |
| `chromeOtherPssKb` | {'int': 2008} |
| `chromeProcesses` | {'int': 2008} |
| `chromeProfiles` | {'int': 2008} |
| `chromeRendererMaxPssKb` | {'int': 2008} |
| `chromeRendererPssKb` | {'int': 2008} |
| `chromeRenderers` | {'int': 2008} |
| `chromeTabs` | {'int': 2008} |
| `chromeTabsProbedProfiles` | {'int': 2008} |
| `chromeUtilityPssKb` | {'int': 2008} |
| `desktopPssKb` | {'int': 2008} |
| `hostPssKb` | {'int': 2008} |
| `kind` | {'str': 2008} |
| `memAvailableKb` | {'int': 2008} |
| `memTotalKb` | {'int': 2008} |
| `otherPssKb` | {'int': 2008} |
| `processes` | {'int': 2008} |
| `pssFallbackProcesses` | {'int': 2008} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
