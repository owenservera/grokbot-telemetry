# sandbox_telemetry_parse — 2026-10-15 17:21:34 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=968102 lines=2146
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2141 |
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
| `chromeBrowserPssKb` | {'int': 2141} |
| `chromeGpuPssKb` | {'int': 2141} |
| `chromeOtherPssKb` | {'int': 2141} |
| `chromeProcesses` | {'int': 2141} |
| `chromeProfiles` | {'int': 2141} |
| `chromeRendererMaxPssKb` | {'int': 2141} |
| `chromeRendererPssKb` | {'int': 2141} |
| `chromeRenderers` | {'int': 2141} |
| `chromeTabs` | {'int': 2141} |
| `chromeTabsProbedProfiles` | {'int': 2141} |
| `chromeUtilityPssKb` | {'int': 2141} |
| `desktopPssKb` | {'int': 2141} |
| `hostPssKb` | {'int': 2141} |
| `kind` | {'str': 2141} |
| `memAvailableKb` | {'int': 2141} |
| `memTotalKb` | {'int': 2141} |
| `otherPssKb` | {'int': 2141} |
| `processes` | {'int': 2141} |
| `pssFallbackProcesses` | {'int': 2141} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
