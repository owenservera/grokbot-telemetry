# sandbox_telemetry_parse — 2026-10-07 10:47:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=972565 lines=2137
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2132 |
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
| `chromeBrowserPssKb` | {'int': 2132} |
| `chromeGpuPssKb` | {'int': 2132} |
| `chromeOtherPssKb` | {'int': 2132} |
| `chromeProcesses` | {'int': 2132} |
| `chromeProfiles` | {'int': 2132} |
| `chromeRendererMaxPssKb` | {'int': 2132} |
| `chromeRendererPssKb` | {'int': 2132} |
| `chromeRenderers` | {'int': 2132} |
| `chromeTabs` | {'int': 2132} |
| `chromeTabsProbedProfiles` | {'int': 2132} |
| `chromeUtilityPssKb` | {'int': 2132} |
| `desktopPssKb` | {'int': 2132} |
| `hostPssKb` | {'int': 2132} |
| `kind` | {'str': 2132} |
| `memAvailableKb` | {'int': 2132} |
| `memTotalKb` | {'int': 2132} |
| `otherPssKb` | {'int': 2132} |
| `processes` | {'int': 2132} |
| `pssFallbackProcesses` | {'int': 2132} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
