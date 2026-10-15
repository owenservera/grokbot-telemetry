# sandbox_telemetry_parse — 2026-10-15 20:04:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1030930 lines=2285
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2280 |
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
| `chromeBrowserPssKb` | {'int': 2280} |
| `chromeGpuPssKb` | {'int': 2280} |
| `chromeOtherPssKb` | {'int': 2280} |
| `chromeProcesses` | {'int': 2280} |
| `chromeProfiles` | {'int': 2280} |
| `chromeRendererMaxPssKb` | {'int': 2280} |
| `chromeRendererPssKb` | {'int': 2280} |
| `chromeRenderers` | {'int': 2280} |
| `chromeTabs` | {'int': 2280} |
| `chromeTabsProbedProfiles` | {'int': 2280} |
| `chromeUtilityPssKb` | {'int': 2280} |
| `desktopPssKb` | {'int': 2280} |
| `hostPssKb` | {'int': 2280} |
| `kind` | {'str': 2280} |
| `memAvailableKb` | {'int': 2280} |
| `memTotalKb` | {'int': 2280} |
| `otherPssKb` | {'int': 2280} |
| `processes` | {'int': 2280} |
| `pssFallbackProcesses` | {'int': 2280} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
