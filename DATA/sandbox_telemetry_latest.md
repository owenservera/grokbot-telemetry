# sandbox_telemetry_parse — 2026-10-13 08:41:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=956676 lines=2365
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1948 |
| `chrome_profile_sample` | 409 |
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
| `chromeBrowserPssKb` | {'int': 1948} |
| `chromeGpuPssKb` | {'int': 1948} |
| `chromeOtherPssKb` | {'int': 1948} |
| `chromeProcesses` | {'int': 1948} |
| `chromeProfiles` | {'int': 1948} |
| `chromeRendererMaxPssKb` | {'int': 1948} |
| `chromeRendererPssKb` | {'int': 1948} |
| `chromeRenderers` | {'int': 1948} |
| `chromeTabs` | {'int': 1948} |
| `chromeTabsProbedProfiles` | {'int': 1948} |
| `chromeUtilityPssKb` | {'int': 1948} |
| `desktopPssKb` | {'int': 1948} |
| `hostPssKb` | {'int': 1948} |
| `kind` | {'str': 1948} |
| `memAvailableKb` | {'int': 1948} |
| `memTotalKb` | {'int': 1948} |
| `otherPssKb` | {'int': 1948} |
| `processes` | {'int': 1948} |
| `pssFallbackProcesses` | {'int': 1948} |

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
| `cpuMillicores` | {'int': 408} |
| `display` | {'int': 409} |
| `kind` | {'str': 409} |
| `processes` | {'int': 409} |
| `pssKb` | {'int': 409} |
| `rendererMaxPssKb` | {'int': 409} |
| `renderers` | {'int': 409} |
| `tabs` | {'int': 409} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
