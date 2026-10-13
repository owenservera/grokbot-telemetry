# sandbox_telemetry_parse — 2026-10-13 14:01:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1125588 lines=2895
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2213 |
| `chrome_profile_sample` | 674 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2213} |
| `chromeGpuPssKb` | {'int': 2213} |
| `chromeOtherPssKb` | {'int': 2213} |
| `chromeProcesses` | {'int': 2213} |
| `chromeProfiles` | {'int': 2213} |
| `chromeRendererMaxPssKb` | {'int': 2213} |
| `chromeRendererPssKb` | {'int': 2213} |
| `chromeRenderers` | {'int': 2213} |
| `chromeTabs` | {'int': 2213} |
| `chromeTabsProbedProfiles` | {'int': 2213} |
| `chromeUtilityPssKb` | {'int': 2213} |
| `desktopPssKb` | {'int': 2213} |
| `hostPssKb` | {'int': 2213} |
| `kind` | {'str': 2213} |
| `memAvailableKb` | {'int': 2213} |
| `memTotalKb` | {'int': 2213} |
| `otherPssKb` | {'int': 2213} |
| `processes` | {'int': 2213} |
| `pssFallbackProcesses` | {'int': 2213} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 673} |
| `display` | {'int': 674} |
| `kind` | {'str': 674} |
| `processes` | {'int': 674} |
| `pssKb` | {'int': 674} |
| `rendererMaxPssKb` | {'int': 674} |
| `renderers` | {'int': 674} |
| `tabs` | {'int': 674} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
