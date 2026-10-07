# sandbox_telemetry_parse — 2026-10-07 14:13:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1066045 lines=2342
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2337 |
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
| `chromeBrowserPssKb` | {'int': 2337} |
| `chromeGpuPssKb` | {'int': 2337} |
| `chromeOtherPssKb` | {'int': 2337} |
| `chromeProcesses` | {'int': 2337} |
| `chromeProfiles` | {'int': 2337} |
| `chromeRendererMaxPssKb` | {'int': 2337} |
| `chromeRendererPssKb` | {'int': 2337} |
| `chromeRenderers` | {'int': 2337} |
| `chromeTabs` | {'int': 2337} |
| `chromeTabsProbedProfiles` | {'int': 2337} |
| `chromeUtilityPssKb` | {'int': 2337} |
| `desktopPssKb` | {'int': 2337} |
| `hostPssKb` | {'int': 2337} |
| `kind` | {'str': 2337} |
| `memAvailableKb` | {'int': 2337} |
| `memTotalKb` | {'int': 2337} |
| `otherPssKb` | {'int': 2337} |
| `processes` | {'int': 2337} |
| `pssFallbackProcesses` | {'int': 2337} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
