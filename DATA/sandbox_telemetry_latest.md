# sandbox_telemetry_parse — 2026-10-07 01:58:52 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=735377 lines=1617
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1612 |
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
| `chromeBrowserPssKb` | {'int': 1612} |
| `chromeGpuPssKb` | {'int': 1612} |
| `chromeOtherPssKb` | {'int': 1612} |
| `chromeProcesses` | {'int': 1612} |
| `chromeProfiles` | {'int': 1612} |
| `chromeRendererMaxPssKb` | {'int': 1612} |
| `chromeRendererPssKb` | {'int': 1612} |
| `chromeRenderers` | {'int': 1612} |
| `chromeTabs` | {'int': 1612} |
| `chromeTabsProbedProfiles` | {'int': 1612} |
| `chromeUtilityPssKb` | {'int': 1612} |
| `desktopPssKb` | {'int': 1612} |
| `hostPssKb` | {'int': 1612} |
| `kind` | {'str': 1612} |
| `memAvailableKb` | {'int': 1612} |
| `memTotalKb` | {'int': 1612} |
| `otherPssKb` | {'int': 1612} |
| `processes` | {'int': 1612} |
| `pssFallbackProcesses` | {'int': 1612} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
