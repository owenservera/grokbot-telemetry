# sandbox_telemetry_parse — 2026-10-15 19:53:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1025958 lines=2274
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2269 |
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
| `chromeBrowserPssKb` | {'int': 2269} |
| `chromeGpuPssKb` | {'int': 2269} |
| `chromeOtherPssKb` | {'int': 2269} |
| `chromeProcesses` | {'int': 2269} |
| `chromeProfiles` | {'int': 2269} |
| `chromeRendererMaxPssKb` | {'int': 2269} |
| `chromeRendererPssKb` | {'int': 2269} |
| `chromeRenderers` | {'int': 2269} |
| `chromeTabs` | {'int': 2269} |
| `chromeTabsProbedProfiles` | {'int': 2269} |
| `chromeUtilityPssKb` | {'int': 2269} |
| `desktopPssKb` | {'int': 2269} |
| `hostPssKb` | {'int': 2269} |
| `kind` | {'str': 2269} |
| `memAvailableKb` | {'int': 2269} |
| `memTotalKb` | {'int': 2269} |
| `otherPssKb` | {'int': 2269} |
| `processes` | {'int': 2269} |
| `pssFallbackProcesses` | {'int': 2269} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
