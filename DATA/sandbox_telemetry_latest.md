# sandbox_telemetry_parse — 2026-10-07 16:06:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1115749 lines=2451
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2446 |
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
| `chromeBrowserPssKb` | {'int': 2446} |
| `chromeGpuPssKb` | {'int': 2446} |
| `chromeOtherPssKb` | {'int': 2446} |
| `chromeProcesses` | {'int': 2446} |
| `chromeProfiles` | {'int': 2446} |
| `chromeRendererMaxPssKb` | {'int': 2446} |
| `chromeRendererPssKb` | {'int': 2446} |
| `chromeRenderers` | {'int': 2446} |
| `chromeTabs` | {'int': 2446} |
| `chromeTabsProbedProfiles` | {'int': 2446} |
| `chromeUtilityPssKb` | {'int': 2446} |
| `desktopPssKb` | {'int': 2446} |
| `hostPssKb` | {'int': 2446} |
| `kind` | {'str': 2446} |
| `memAvailableKb` | {'int': 2446} |
| `memTotalKb` | {'int': 2446} |
| `otherPssKb` | {'int': 2446} |
| `processes` | {'int': 2446} |
| `pssFallbackProcesses` | {'int': 2446} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
