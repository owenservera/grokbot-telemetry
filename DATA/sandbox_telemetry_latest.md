# sandbox_telemetry_parse — 2026-10-06 01:00:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=58562 lines=133
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 128 |
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
| `chromeBrowserPssKb` | {'int': 128} |
| `chromeGpuPssKb` | {'int': 128} |
| `chromeOtherPssKb` | {'int': 128} |
| `chromeProcesses` | {'int': 128} |
| `chromeProfiles` | {'int': 128} |
| `chromeRendererMaxPssKb` | {'int': 128} |
| `chromeRendererPssKb` | {'int': 128} |
| `chromeRenderers` | {'int': 128} |
| `chromeTabs` | {'int': 128} |
| `chromeTabsProbedProfiles` | {'int': 128} |
| `chromeUtilityPssKb` | {'int': 128} |
| `desktopPssKb` | {'int': 128} |
| `hostPssKb` | {'int': 128} |
| `kind` | {'str': 128} |
| `memAvailableKb` | {'int': 128} |
| `memTotalKb` | {'int': 128} |
| `otherPssKb` | {'int': 128} |
| `processes` | {'int': 128} |
| `pssFallbackProcesses` | {'int': 128} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
