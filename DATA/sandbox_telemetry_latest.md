# sandbox_telemetry_parse — 2026-10-07 12:14:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1012237 lines=2224
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2219 |
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
| `chromeBrowserPssKb` | {'int': 2219} |
| `chromeGpuPssKb` | {'int': 2219} |
| `chromeOtherPssKb` | {'int': 2219} |
| `chromeProcesses` | {'int': 2219} |
| `chromeProfiles` | {'int': 2219} |
| `chromeRendererMaxPssKb` | {'int': 2219} |
| `chromeRendererPssKb` | {'int': 2219} |
| `chromeRenderers` | {'int': 2219} |
| `chromeTabs` | {'int': 2219} |
| `chromeTabsProbedProfiles` | {'int': 2219} |
| `chromeUtilityPssKb` | {'int': 2219} |
| `desktopPssKb` | {'int': 2219} |
| `hostPssKb` | {'int': 2219} |
| `kind` | {'str': 2219} |
| `memAvailableKb` | {'int': 2219} |
| `memTotalKb` | {'int': 2219} |
| `otherPssKb` | {'int': 2219} |
| `processes` | {'int': 2219} |
| `pssFallbackProcesses` | {'int': 2219} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
