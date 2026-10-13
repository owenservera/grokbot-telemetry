# sandbox_telemetry_parse — 2026-10-13 07:55:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=930587 lines=2283
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1907 |
| `chrome_profile_sample` | 368 |
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
| `chromeBrowserPssKb` | {'int': 1907} |
| `chromeGpuPssKb` | {'int': 1907} |
| `chromeOtherPssKb` | {'int': 1907} |
| `chromeProcesses` | {'int': 1907} |
| `chromeProfiles` | {'int': 1907} |
| `chromeRendererMaxPssKb` | {'int': 1907} |
| `chromeRendererPssKb` | {'int': 1907} |
| `chromeRenderers` | {'int': 1907} |
| `chromeTabs` | {'int': 1907} |
| `chromeTabsProbedProfiles` | {'int': 1907} |
| `chromeUtilityPssKb` | {'int': 1907} |
| `desktopPssKb` | {'int': 1907} |
| `hostPssKb` | {'int': 1907} |
| `kind` | {'str': 1907} |
| `memAvailableKb` | {'int': 1907} |
| `memTotalKb` | {'int': 1907} |
| `otherPssKb` | {'int': 1907} |
| `processes` | {'int': 1907} |
| `pssFallbackProcesses` | {'int': 1907} |

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
| `cpuMillicores` | {'int': 367} |
| `display` | {'int': 368} |
| `kind` | {'str': 368} |
| `processes` | {'int': 368} |
| `pssKb` | {'int': 368} |
| `rendererMaxPssKb` | {'int': 368} |
| `renderers` | {'int': 368} |
| `tabs` | {'int': 368} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
