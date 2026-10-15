# sandbox_telemetry_parse — 2026-10-15 20:29:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1042230 lines=2310
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2305 |
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
| `chromeBrowserPssKb` | {'int': 2305} |
| `chromeGpuPssKb` | {'int': 2305} |
| `chromeOtherPssKb` | {'int': 2305} |
| `chromeProcesses` | {'int': 2305} |
| `chromeProfiles` | {'int': 2305} |
| `chromeRendererMaxPssKb` | {'int': 2305} |
| `chromeRendererPssKb` | {'int': 2305} |
| `chromeRenderers` | {'int': 2305} |
| `chromeTabs` | {'int': 2305} |
| `chromeTabsProbedProfiles` | {'int': 2305} |
| `chromeUtilityPssKb` | {'int': 2305} |
| `desktopPssKb` | {'int': 2305} |
| `hostPssKb` | {'int': 2305} |
| `kind` | {'str': 2305} |
| `memAvailableKb` | {'int': 2305} |
| `memTotalKb` | {'int': 2305} |
| `otherPssKb` | {'int': 2305} |
| `processes` | {'int': 2305} |
| `pssFallbackProcesses` | {'int': 2305} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
