# sandbox_telemetry_parse — 2026-10-15 23:19:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1104606 lines=2448
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2443 |
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
| `chromeBrowserPssKb` | {'int': 2443} |
| `chromeGpuPssKb` | {'int': 2443} |
| `chromeOtherPssKb` | {'int': 2443} |
| `chromeProcesses` | {'int': 2443} |
| `chromeProfiles` | {'int': 2443} |
| `chromeRendererMaxPssKb` | {'int': 2443} |
| `chromeRendererPssKb` | {'int': 2443} |
| `chromeRenderers` | {'int': 2443} |
| `chromeTabs` | {'int': 2443} |
| `chromeTabsProbedProfiles` | {'int': 2443} |
| `chromeUtilityPssKb` | {'int': 2443} |
| `desktopPssKb` | {'int': 2443} |
| `hostPssKb` | {'int': 2443} |
| `kind` | {'str': 2443} |
| `memAvailableKb` | {'int': 2443} |
| `memTotalKb` | {'int': 2443} |
| `otherPssKb` | {'int': 2443} |
| `processes` | {'int': 2443} |
| `pssFallbackProcesses` | {'int': 2443} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
