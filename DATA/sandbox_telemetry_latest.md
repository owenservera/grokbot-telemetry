# sandbox_telemetry_parse — 2026-10-06 20:00:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=572930 lines=1261
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1256 |
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
| `chromeBrowserPssKb` | {'int': 1256} |
| `chromeGpuPssKb` | {'int': 1256} |
| `chromeOtherPssKb` | {'int': 1256} |
| `chromeProcesses` | {'int': 1256} |
| `chromeProfiles` | {'int': 1256} |
| `chromeRendererMaxPssKb` | {'int': 1256} |
| `chromeRendererPssKb` | {'int': 1256} |
| `chromeRenderers` | {'int': 1256} |
| `chromeTabs` | {'int': 1256} |
| `chromeTabsProbedProfiles` | {'int': 1256} |
| `chromeUtilityPssKb` | {'int': 1256} |
| `desktopPssKb` | {'int': 1256} |
| `hostPssKb` | {'int': 1256} |
| `kind` | {'str': 1256} |
| `memAvailableKb` | {'int': 1256} |
| `memTotalKb` | {'int': 1256} |
| `otherPssKb` | {'int': 1256} |
| `processes` | {'int': 1256} |
| `pssFallbackProcesses` | {'int': 1256} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
