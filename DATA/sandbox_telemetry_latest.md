# sandbox_telemetry_parse — 2026-10-27 03:07:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=285716 lines=635
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 630 |
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
| `chromeBrowserPssKb` | {'int': 630} |
| `chromeGpuPssKb` | {'int': 630} |
| `chromeOtherPssKb` | {'int': 630} |
| `chromeProcesses` | {'int': 630} |
| `chromeProfiles` | {'int': 630} |
| `chromeRendererMaxPssKb` | {'int': 630} |
| `chromeRendererPssKb` | {'int': 630} |
| `chromeRenderers` | {'int': 630} |
| `chromeTabs` | {'int': 630} |
| `chromeTabsProbedProfiles` | {'int': 630} |
| `chromeUtilityPssKb` | {'int': 630} |
| `desktopPssKb` | {'int': 630} |
| `hostPssKb` | {'int': 630} |
| `kind` | {'str': 630} |
| `memAvailableKb` | {'int': 630} |
| `memTotalKb` | {'int': 630} |
| `otherPssKb` | {'int': 630} |
| `processes` | {'int': 630} |
| `pssFallbackProcesses` | {'int': 630} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
