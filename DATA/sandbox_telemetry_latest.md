# sandbox_telemetry_parse — 2026-10-15 21:35:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1066638 lines=2364
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2359 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2359} |
| `chromeGpuPssKb` | {'int': 2359} |
| `chromeOtherPssKb` | {'int': 2359} |
| `chromeProcesses` | {'int': 2359} |
| `chromeProfiles` | {'int': 2359} |
| `chromeRendererMaxPssKb` | {'int': 2359} |
| `chromeRendererPssKb` | {'int': 2359} |
| `chromeRenderers` | {'int': 2359} |
| `chromeTabs` | {'int': 2359} |
| `chromeTabsProbedProfiles` | {'int': 2359} |
| `chromeUtilityPssKb` | {'int': 2359} |
| `desktopPssKb` | {'int': 2359} |
| `hostPssKb` | {'int': 2359} |
| `kind` | {'str': 2359} |
| `memAvailableKb` | {'int': 2359} |
| `memTotalKb` | {'int': 2359} |
| `otherPssKb` | {'int': 2359} |
| `processes` | {'int': 2359} |
| `pssFallbackProcesses` | {'int': 2359} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
