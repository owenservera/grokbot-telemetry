# sandbox_telemetry_parse — 2026-10-13 07:46:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=924861 lines=2265
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1898 |
| `chrome_profile_sample` | 359 |
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
| `chromeBrowserPssKb` | {'int': 1898} |
| `chromeGpuPssKb` | {'int': 1898} |
| `chromeOtherPssKb` | {'int': 1898} |
| `chromeProcesses` | {'int': 1898} |
| `chromeProfiles` | {'int': 1898} |
| `chromeRendererMaxPssKb` | {'int': 1898} |
| `chromeRendererPssKb` | {'int': 1898} |
| `chromeRenderers` | {'int': 1898} |
| `chromeTabs` | {'int': 1898} |
| `chromeTabsProbedProfiles` | {'int': 1898} |
| `chromeUtilityPssKb` | {'int': 1898} |
| `desktopPssKb` | {'int': 1898} |
| `hostPssKb` | {'int': 1898} |
| `kind` | {'str': 1898} |
| `memAvailableKb` | {'int': 1898} |
| `memTotalKb` | {'int': 1898} |
| `otherPssKb` | {'int': 1898} |
| `processes` | {'int': 1898} |
| `pssFallbackProcesses` | {'int': 1898} |

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
| `cpuMillicores` | {'int': 358} |
| `display` | {'int': 359} |
| `kind` | {'str': 359} |
| `processes` | {'int': 359} |
| `pssKb` | {'int': 359} |
| `rendererMaxPssKb` | {'int': 359} |
| `renderers` | {'int': 359} |
| `tabs` | {'int': 359} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
