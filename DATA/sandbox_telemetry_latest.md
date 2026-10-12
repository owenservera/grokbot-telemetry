# sandbox_telemetry_parse — 2026-10-13 01:57:34 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=774008 lines=1791
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1661 |
| `chrome_profile_sample` | 122 |
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
| `chromeBrowserPssKb` | {'int': 1661} |
| `chromeGpuPssKb` | {'int': 1661} |
| `chromeOtherPssKb` | {'int': 1661} |
| `chromeProcesses` | {'int': 1661} |
| `chromeProfiles` | {'int': 1661} |
| `chromeRendererMaxPssKb` | {'int': 1661} |
| `chromeRendererPssKb` | {'int': 1661} |
| `chromeRenderers` | {'int': 1661} |
| `chromeTabs` | {'int': 1661} |
| `chromeTabsProbedProfiles` | {'int': 1661} |
| `chromeUtilityPssKb` | {'int': 1661} |
| `desktopPssKb` | {'int': 1661} |
| `hostPssKb` | {'int': 1661} |
| `kind` | {'str': 1661} |
| `memAvailableKb` | {'int': 1661} |
| `memTotalKb` | {'int': 1661} |
| `otherPssKb` | {'int': 1661} |
| `processes` | {'int': 1661} |
| `pssFallbackProcesses` | {'int': 1661} |

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
| `cpuMillicores` | {'int': 121} |
| `display` | {'int': 122} |
| `kind` | {'str': 122} |
| `processes` | {'int': 122} |
| `pssKb` | {'int': 122} |
| `rendererMaxPssKb` | {'int': 122} |
| `renderers` | {'int': 122} |
| `tabs` | {'int': 122} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
