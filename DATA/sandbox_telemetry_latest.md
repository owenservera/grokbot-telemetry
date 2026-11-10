# sandbox_telemetry_parse — 2026-11-11 00:23:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1397456 lines=3096
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3087 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 3087} |
| `chromeGpuPssKb` | {'int': 3087} |
| `chromeOtherPssKb` | {'int': 3087} |
| `chromeProcesses` | {'int': 3087} |
| `chromeProfiles` | {'int': 3087} |
| `chromeRendererMaxPssKb` | {'int': 3087} |
| `chromeRendererPssKb` | {'int': 3087} |
| `chromeRenderers` | {'int': 3087} |
| `chromeTabs` | {'int': 3087} |
| `chromeTabsProbedProfiles` | {'int': 3087} |
| `chromeUtilityPssKb` | {'int': 3087} |
| `desktopPssKb` | {'int': 3087} |
| `hostPssKb` | {'int': 3087} |
| `kind` | {'str': 3087} |
| `memAvailableKb` | {'int': 3087} |
| `memTotalKb` | {'int': 3087} |
| `otherPssKb` | {'int': 3087} |
| `processes` | {'int': 3087} |
| `pssFallbackProcesses` | {'int': 3087} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
