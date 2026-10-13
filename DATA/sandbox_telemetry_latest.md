# sandbox_telemetry_parse — 2026-10-13 21:50:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1239915 lines=3253
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2392 |
| `chrome_profile_sample` | 853 |
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
| `chromeBrowserPssKb` | {'int': 2392} |
| `chromeGpuPssKb` | {'int': 2392} |
| `chromeOtherPssKb` | {'int': 2392} |
| `chromeProcesses` | {'int': 2392} |
| `chromeProfiles` | {'int': 2392} |
| `chromeRendererMaxPssKb` | {'int': 2392} |
| `chromeRendererPssKb` | {'int': 2392} |
| `chromeRenderers` | {'int': 2392} |
| `chromeTabs` | {'int': 2392} |
| `chromeTabsProbedProfiles` | {'int': 2392} |
| `chromeUtilityPssKb` | {'int': 2392} |
| `desktopPssKb` | {'int': 2392} |
| `hostPssKb` | {'int': 2392} |
| `kind` | {'str': 2392} |
| `memAvailableKb` | {'int': 2392} |
| `memTotalKb` | {'int': 2392} |
| `otherPssKb` | {'int': 2392} |
| `processes` | {'int': 2392} |
| `pssFallbackProcesses` | {'int': 2392} |

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
| `cpuMillicores` | {'int': 852} |
| `display` | {'int': 853} |
| `kind` | {'str': 853} |
| `processes` | {'int': 853} |
| `pssKb` | {'int': 853} |
| `rendererMaxPssKb` | {'int': 853} |
| `renderers` | {'int': 853} |
| `tabs` | {'int': 853} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
