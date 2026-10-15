# sandbox_telemetry_parse — 2026-10-15 22:15:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1081554 lines=2397
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2392 |
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
| `chromeBrowserPssKb` | {'int': 2392} |
| `chromeGpuPssKb` | {'int': 2392} |
| `chromeOtherPssKb` | {'int': 2392} |
| `chromeProcesses` | {'int': 2392} |
| `chromeProfiles` | {'int': 2392} |
| `chromeRendererMaxPssKb` | {'int': 2392} |
| `chromeRendererPssKb` | {'int': 2392} |
| `chromeRenderers` | {'int': 2392} |
| `chromeTabs` | {'int': 2392} |
| `chromeTabsProbedProfiles` | {'int': 2392} |
| `chromeUtilityPssKb` | {'int': 2392} |
| `desktopPssKb` | {'int': 2392} |
| `hostPssKb` | {'int': 2392} |
| `kind` | {'str': 2392} |
| `memAvailableKb` | {'int': 2392} |
| `memTotalKb` | {'int': 2392} |
| `otherPssKb` | {'int': 2392} |
| `processes` | {'int': 2392} |
| `pssFallbackProcesses` | {'int': 2392} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
