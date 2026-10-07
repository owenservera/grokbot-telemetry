# sandbox_telemetry_parse — 2026-10-07 12:40:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1024093 lines=2250
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2245 |
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
| `chromeBrowserPssKb` | {'int': 2245} |
| `chromeGpuPssKb` | {'int': 2245} |
| `chromeOtherPssKb` | {'int': 2245} |
| `chromeProcesses` | {'int': 2245} |
| `chromeProfiles` | {'int': 2245} |
| `chromeRendererMaxPssKb` | {'int': 2245} |
| `chromeRendererPssKb` | {'int': 2245} |
| `chromeRenderers` | {'int': 2245} |
| `chromeTabs` | {'int': 2245} |
| `chromeTabsProbedProfiles` | {'int': 2245} |
| `chromeUtilityPssKb` | {'int': 2245} |
| `desktopPssKb` | {'int': 2245} |
| `hostPssKb` | {'int': 2245} |
| `kind` | {'str': 2245} |
| `memAvailableKb` | {'int': 2245} |
| `memTotalKb` | {'int': 2245} |
| `otherPssKb` | {'int': 2245} |
| `processes` | {'int': 2245} |
| `pssFallbackProcesses` | {'int': 2245} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
